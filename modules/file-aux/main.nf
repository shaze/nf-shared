
nextflow.enable.types = true

def fileGroups(pattern: String, key: Closure = { f -> f.simpleName }) {
  return channel.fromPath(pattern)
                .map { f -> tuple(key.call(f), f) }
                .groupBy()
}

