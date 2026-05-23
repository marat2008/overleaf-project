#include <iostream>
#include <vector>

// Partition array around pivot element
int partition(std::vector<int>& arr, int low, int high) {
    int pivot = arr[high];  // pivot element
    int i = low - 1;

    for (int j = low; j < high; ++j) {
        if (arr[j] <= pivot) {
            ++i;
            std::swap(arr[i], arr[j]);
        }
    }
    std::swap(arr[i + 1], arr[high]);
    return i + 1;
}

// Recursive quicksort
void quickSort(std::vector<int>& arr, int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

int main() {
    std::vector<int> data = {64, 34, 25, 12, 22, 11, 90};

    quickSort(data, 0, static_cast<int>(data.size()) - 1);

    for (int x : data) {
        std::cout << x << " ";
    }
    std::cout << std::endl;
    return 0;
}
