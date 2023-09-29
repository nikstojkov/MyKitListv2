p "conencted"
class CSVCheck

  def self.run_checks(row)
    is_field_null?(row)
    check_fields(row)
    check_injections(row)
    something_else(row)
  end

  def self.is_field_null?(row)
    row.fields.all?(&:blank?) ? p("BLANK FIELDS") : p("NOT BLANK FIELDS")
    status_report("is_field_null?")
  end

  def self.check_fields(row)
    p "check fields method"
  end

  def self.check_injections(row)
    p "check injections method"
  end

  def self.something_else(row)
    p "something else method"
  end

  def status_report(method_name, status)
    p "status report from #{method_name} says #{status}"
  end

end
