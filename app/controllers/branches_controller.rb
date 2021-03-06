class BranchesController < Dashboard::BaseController
  before_action :can_manage
  before_action :set_branch, only: [:show, :edit, :update, :destroy]

  # GET /branches
  def index
    @current_user = current_user
    @branches = Branch.where(user_id: current_user.id)
  end

  # GET /branches/1
  def show
  end

  # GET /branches/new
  def new
    @branch = Branch.new
  end

  # GET /branches/1/edit
  def edit
  end

  # POST /branches
  def create
    @branch = Branch.new(branch_params)
    @branch.user_id = current_user.id

    if @branch.save
      redirect_to branches_path, notice: 'Branch was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /branches/1
  def update
    if @branch.update(branch_params)
      redirect_to @branch, notice: 'Branch was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /branches/1
  def destroy
    @branch.destroy
    redirect_to branches_url, notice: 'Branch was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch
      @branch = Branch.find(params[:id])
    end

    def can_manage
      authorize Branch, :manage?
    end

    # Only allow a trusted parameter "white list" through.
    def branch_params
      params.require(:branch).permit(:name)
    end
end
