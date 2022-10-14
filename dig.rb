class Example
  class << self
    def dig(subject, *path, default: nil)
      if path.size == 0
        subject
      elsif subject.is_a?(String) || !subject.respond_to?(:[])
        return nil
      else
        first, *rest = path
        dig(subject[first], *rest, default: default)
      end
    end

    def dig_paths(subject, paths:[], default: nil)
      if paths.size == 0
        default
      else
        path, *rest = paths
        dig(subject, *[path].flatten) || dig_paths(subject, paths: rest, default: default)
      end
    end
  end
end
