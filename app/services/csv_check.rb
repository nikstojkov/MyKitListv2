p "conencted"
class CSVCheck

  def self.run_checks(row)
    blank_row?(row)
    check_fields(row)
    check_injections(row)
    something_else(row)
  end

  def self.status_report(method_name, status)
    p "status report from #{method_name} says #{status}"
  end

  private

  def self.blank_row?(row)
    row.fields.all?(&:blank?) ? p("BLANK FIELDS") : p("NOT BLANK FIELDS")
    status_report("is_field_null?", "success")
  end

  def self.check_fields(row)
    status_report("check_fields", "success")
  end

  def self.check_injections(row)
    status_report("check_injections", "success")
  end

  def self.something_else(row)
    status_report("something_else", "success")
  end


end
