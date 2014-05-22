class UrlCommandsController < ApplicationController
  before_action :set_url_command, only: [:show, :edit, :update, :destroy]

  # GET /url_commands
  # GET /url_commands.json
  def index
    @url_commands = UrlCommand.first(100)
  end

  def get_param

    if params.has_key?("model_name") and  params.has_key?("firmware_version")
      @url_commands = UrlCommand.where(" model_name = ? and firmware_version = ?",
        params[:model_name], 
        params[:firmware_version]
      # ).all
      ).first(20)
      return true
    end
    @url_commands = UrlCommand.first(1)
    # respond_to do |format|
      # format.json {render json: @url_commands.as_json(only:[:cgi_attributes])}
      # format.json {render json: @url_commands}
    # end
  end

  # GET /url_commands/1
  # GET /url_commands/1.json
  def show
  end

  # GET /url_commands/new
  def new
    @url_command = UrlCommand.new
  end

  # GET /url_commands/1/edit
  def edit
  end

  # POST /url_commands
  # POST /url_commands.json
  def create
    @url_command = UrlCommand.new(url_command_params)

    respond_to do |format|
      if @url_command.save
        format.html { redirect_to @url_command, notice: 'Url command was successfully created.' }
        format.json { render action: 'show', status: :created, location: @url_command }
      else
        format.html { render action: 'new' }
        format.json { render json: @url_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_commands/1
  # PATCH/PUT /url_commands/1.json
  def update
    respond_to do |format|
      if @url_command.update(url_command_params)
        format.html { redirect_to @url_command, notice: 'Url command was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @url_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_commands/1
  # DELETE /url_commands/1.json
  def destroy
    @url_command.destroy
    respond_to do |format|
      format.html { redirect_to url_commands_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_command
      @url_command = UrlCommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_command_params
      params.require(:url_command).permit(:model_name, :firmware_version, :cgi_attributes,
                                           :cgi_name,:name, :range, :security)
      
    end
end
