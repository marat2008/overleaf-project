/**
 * Реализация алгоритма Дейкстры для нахождения
 * кратчайших путей в взвешенном графе.
 */

#include <iostream>
#include <vector>
#include <queue>
#include <limits>

using namespace std;

const int INF = numeric_limits<int>::max();

// Тип: пара (вес, вершина)
using pii = pair<int, int>;

/**
 * Алгоритм Дейкстры.
 * @param graph  Список смежности: graph[u] = {(v, w), ...}
 * @param src    Исходная вершина
 * @return       Вектор минимальных расстояний от src
 */
vector<int> dijkstra(const vector<vector<pii>>& graph, int src) {
    int n = graph.size();
    vector<int> dist(n, INF);
    priority_queue<pii, vector<pii>, greater<pii>> pq;

    dist[src] = 0;
    pq.push({0, src});

    while (!pq.empty()) {
        auto [d, u] = pq.top();
        pq.pop();

        if (d > dist[u]) continue;

        for (auto [v, w] : graph[u]) {
            if (dist[u] + w < dist[v]) {
                dist[v] = dist[u] + w;
                pq.push({dist[v], v});
            }
        }
    }

    return dist;
}

int main() {
    int n = 5;
    vector<vector<pii>> graph(n);

    // Рёбра: (u, v, вес)
    graph[0].push_back({1, 10});
    graph[0].push_back({2, 3});
    graph[1].push_back({3, 2});
    graph[2].push_back({1, 4});
    graph[2].push_back({3, 8});
    graph[2].push_back({4, 2});
    graph[3].push_back({4, 5});

    vector<int> dist = dijkstra(graph, 0);

    for (int i = 0; i < n; i++) {
        cout << "Расстояние от 0 до " << i << ": ";
        if (dist[i] == INF)
            cout << "недостижимо" << endl;
        else
            cout << dist[i] << endl;
    }

    return 0;
}
