module YamlHandler
  YAML_ROOT = File.join(Rails.root.to_s, "config", "yaml")
  
  def self.load_file(file_path)
    return nil if !valid_file?(file_path)
    YAML::load(File.open(file_path))
  end
  
  private
  
  def self.valid_file?(file_path)
    File.exist?(file_path)
  end
end
