#include <iostream>
#include <string>
#include <vector>

const int SIZE = 10;

std::vector<std::vector<int>> matrix(SIZE, std::vector<int>(SIZE, 0));

void GetElMatrix(const std::vector<std::vector<int>>& inputMatrix)
{
    srand(time(NULL));
    std::cout << "Матрица смежности: \n";

    for (int j = 0; j < SIZE; j++)
    {
        int tmp;
        do
            tmp = rand() % SIZE;
        while (tmp == j || matrix[j][tmp] == 1);
        matrix[tmp][j] = 1;
    }

    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            if (i != j && matrix[j][i] != 1)
                matrix[i][j] = rand() % 2;
            std::cout << matrix[i][j] << " ";
        }
        std::cout << "\n";
    }

    std::cout << "\nМатрица расстояний: \n";
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            if (matrix[i][j] == 1)
                matrix[i][j] = rand() % 9 + 1;
            std::cout << matrix[i][j] << " ";
        }
        std::cout << "\n";
    }
}

int minV(int* arr, bool* mask) {
    int result = -1;
    for (int i = 0; i < SIZE; i++) {
        if (arr[i] > 0 && mask[i]) {
            result = i;
            break;
        }
    }
    if (result == -1) {
        return -1;
    }
    for (int i = 0; i < SIZE; i++) {
        if (arr[i] < arr[result] && arr[i] > 0 && mask[i]) {
            result = i;
        }
    }
    mask[result] = false;
    return result;
}

void FillMin(int* arr, int index) {
    for (int i = 0; i < SIZE; i++) {
        int temp = matrix[index][i];
        if (temp != 0) {
            if (arr[i] == 0) {
                arr[i] = arr[index] + temp;
            }
            else {
                arr[i] = std::min(arr[i], arr[index] + temp);
            }
        }
    }
}

void printAllPaths(const std::vector<std::vector<int>>& graph, int start, int end, std::vector<int>& path, std::vector<std::vector<int>>& allPaths) {
    path.push_back(start);
    if (start == end) {
        allPaths.push_back(path);
    }
    else {
        for (int node = 0; node < graph[start].size(); ++node) {
            if (graph[start][node] != 0 && find(path.begin(), path.end(), node) == path.end()) {
                printAllPaths(graph, node, end, path, allPaths);
            }
        }
    }

    path.pop_back();
}

void sort(std::vector<std::vector<int>>& allPath) {
    for (int i = 0; i < allPath.size(); i++) {
        int sum = 0;
        for (int j = 1; j < allPath[i].size(); j++) {
            int first = allPath[i][j - 1];
            int second = allPath[i][j];
            sum = sum + matrix[first][second];
        }
        allPath[i].push_back(sum);
    }
    /*for (int i = 0; i < allPath.size(); i++) {
        for (int j = i; j < allPath.size() - 1; j++) {
            if (allPath[j][allPath[j].size() - 1] > allPath[j + 1][allPath[j + 1].size() - 1]) {
                auto temp = allPath[j];
                allPath[j] = allPath[j + 1];
                allPath[j + 1] = temp;
            }
        }
    }*/
}

int main()
{
    setlocale(LC_ALL, "Rus");

    int v, w;
    std::string max = "", min = "";

    std::cout << "Введите номер начальной вершины: ";
    std::cin >> v;

    std::cout << "Введите номер конечной вершины: ";
    std::cin >> w;
    std::cout << "\n";

    v--; w--;

    GetElMatrix(matrix);

    if (v < SIZE && v >= 0 && w < SIZE && w > 0) {
        std::vector<int> path;
        std::vector<std::vector<int>> allPaths;

        std::cout << "\nВсе пути:\n\n";
        printAllPaths(matrix, v, w, path, allPaths);

        sort(allPaths);

        int mi = 10000, ma = -1;
        for (const auto& p : allPaths) {
            std::string str = "";
            for (int i = 0; i < p.size() - 1; ++i) {
                std::cout << p[i]+1;
                str += std::to_string(p[i] + 1);
                if (i < p.size() - 2) {
                    std::cout << "-";
                    str += "-";
                }
            }
            std::cout << "; Длинa: " << p[p.size() - 1] << "\n";
            str = str + "; Длина: " + std::to_string(p[p.size() - 1]);
            if (p[p.size() - 1] < mi)
            {
                mi = p[p.size() - 1];
                min = str;
            }

            if (p[p.size() - 1] > ma)
            {
                ma = p[p.size() - 1];
                max = str;
            }
        }
        std::cout << "\n";

        std::cout << "Путь с минимальной длиной: " << min << "\n";
        std::cout << "Путь с максимальной длиной: " << max << "\n";

        int road[SIZE];

        bool mask[SIZE];
        for (int i = 0; i < SIZE; i++) {
            mask[i] = true;
        }

        for (int i = 0; i < SIZE; i++) {
            road[i] = matrix[v][i];
        }

        for (int i = 0; i < SIZE; i++) {
            int index = minV(road, mask);
            if (index == -1) {
                break;
            }
            FillMin(road, index);
        }

        int excen[SIZE];

        for (int i = 0; i < SIZE; i++) {

            int tv = i;

            int troad[SIZE];

            bool tmask[SIZE];
            for (int j = 0; j < SIZE; j++) {
                tmask[j] = true;
            }

            for (int j = 0; j < SIZE; j++) {
                troad[j] = matrix[tv][j];
            }

            for (int j = 0; j < SIZE; j++) {
                int index = minV(troad, tmask);
                if (index == -1) {
                    break;
                }
                FillMin(troad, index);
            }

            int result = 0;

            for (int j = 0; j < SIZE; j++) {
                if (troad[j] == 0 && j != i) {
                    result = 0;
                    break;
                }
                if (troad[j] > result) {
                    result = troad[j];
                }
            }

            excen[i] = result;

        }

        int index = 0;
        for (int i = 1; i < SIZE; i++) {
            if (excen[i] < excen[index] && excen[i] > 0) {
                index = i;
            }
        }
        std::cout << "Центр орграфа: " << index+1 << "\n";
    }
}