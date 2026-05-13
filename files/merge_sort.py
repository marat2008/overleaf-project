"""
Реализация алгоритма сортировки слиянием (Merge Sort).
"""

from typing import List


def merge_sort(arr: List[int]) -> List[int]:
    """
    Сортирует список arr методом слияния.

    Временная сложность: O(n log n)
    Пространственная сложность: O(n)

    :param arr: Входной список целых чисел.
    :return: Отсортированный список.
    """
    if len(arr) <= 1:
        return arr

    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])

    return merge(left, right)


def merge(left: List[int], right: List[int]) -> List[int]:
    """
    Сливает два отсортированных списка в один.

    :param left: Левая отсортированная половина.
    :param right: Правая отсортированная половина.
    :return: Слитый отсортированный список.
    """
    result = []
    i = j = 0

    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1

    result.extend(left[i:])
    result.extend(right[j:])
    return result


if __name__ == "__main__":
    data = [38, 27, 43, 3, 9, 82, 10]
    print("До сортировки:  ", data)
    sorted_data = merge_sort(data)
    print("После сортировки:", sorted_data)
