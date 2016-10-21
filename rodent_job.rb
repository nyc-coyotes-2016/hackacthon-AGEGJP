class Rodent_Job

  def initialize(args={})
    @inspection_type = args.fetch(:inspection_type, "Empty")
    @job_ticket_or_work_order_id = args.fetch(:job_ticket_or_work_order_id, "Empty")
    @job_id = args.fetch(:job_id, "Empty")
    @job_progress = args.fetch(:job_progress, "Empty")
    @boro_code = args.fetch(:boro_code, "Empty")
    @block = args.fetch(:block, "Empty")
    @lot = args.fetch(:lot, "Empty")
    @house_number = args.fetch(:house_number, "Empty")
    @street_name = args.fetch(:street_name, "Empty")
    @zip_code = args.fetch(:zip_code, "Empty")
    @borough = args.fetch(:borough, "Empty")
    @inspection_date = args.fetch(:inspection_date, "Empty")
    @result = args.fetch(:result, "Empty")
    @approved_date = args.fetch(:approved_date, "Empty")
  end


end
