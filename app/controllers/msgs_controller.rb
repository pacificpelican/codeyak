class MsgsController < ApplicationController
  before_action :set_msg, only: [:show, :edit, :update, :destroy]

  # GET /msgs
  # GET /msgs.json
  def index
    @msgs = Msg.all
    newhash = DateTime.strptime("1318996912",'%s')
    @namehash = Digest::SHA1.hexdigest(newhash)
  end

  # GET /msgs/1
  # GET /msgs/1.json
  def show
  end

  # GET /msgs/new
  def new
    @msg = Msg.new
  end

  # GET /msgs/1/edit
  def edit
  end

  # POST /msgs
  # POST /msgs.json
  def create
    message = msg_params
    @msg = Msg.new(msg_params)
    thesender = @msg.sender
    thesentdate = @msg.sent
    theservertime = DateTime.now
    unless @msg.content.empty? || @msg.sender.empty?
      ActionCable.server.broadcast 'room_channel',
                                   content: @msg.content,
                                   sender: thesender,
                                   servertime: theservertime
    end
  end

  # PATCH/PUT /msgs/1
  # PATCH/PUT /msgs/1.json
  def update
    respond_to do |format|
      if @msg.update(msg_params)
        format.html { redirect_to @msg, notice: 'Msg was successfully updated.' }
        format.json { render :show, status: :ok, location: @msg }
      else
        format.html { render :edit }
        format.json { render json: @msg.errors, status: :unprocessable_entity }
      end
    end
  end

  def chatpage
    @msg = Msg.new
    @nmh = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
  end

  # DELETE /msgs/1
  # DELETE /msgs/1.json
  def destroy
    @msg.destroy
    respond_to do |format|
      format.html { redirect_to msgs_url, notice: 'Msg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_msg
      @msg = Msg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def msg_params
      params.require(:msg).permit(:content, :sender, :sent, :sent_id)
    end
end
