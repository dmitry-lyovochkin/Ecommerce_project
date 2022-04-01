
class ServerException implements Exception {}

class CacheException implements Exception {}


/* Репозиторий будет перехватывать исключеиня и возвращать их используя тип Either
 как и failures. По этой причине обычно тип failure точно соответствует типу exception*/