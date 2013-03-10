class ResumeSectionsController < ApplicationController
  # GET /resume_sections
  # GET /resume_sections.json
  def index
    @resume_sections = ResumeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resume_sections }
    end
  end

  # GET /resume_sections/1
  # GET /resume_sections/1.json
  def show
    @resume_section = ResumeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume_section }
    end
  end

  # GET /resume_sections/new
  # GET /resume_sections/new.json
  def new
    @resume_section = ResumeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume_section }
    end
  end

  # GET /resume_sections/1/edit
  def edit
    @resume_section = ResumeSection.find(params[:id])
  end

  # POST /resume_sections
  # POST /resume_sections.json
  def create
    @resume_section = ResumeSection.new(params[:resume_section])

    respond_to do |format|
      if @resume_section.save
        format.html { redirect_to @resume_section, notice: 'Resume section was successfully created.' }
        format.json { render json: @resume_section, status: :created, location: @resume_section }
      else
        format.html { render action: "new" }
        format.json { render json: @resume_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resume_sections/1
  # PUT /resume_sections/1.json
  def update
    @resume_section = ResumeSection.find(params[:id])

    respond_to do |format|
      if @resume_section.update_attributes(params[:resume_section])
        format.html { redirect_to @resume_section, notice: 'Resume section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resume_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_sections/1
  # DELETE /resume_sections/1.json
  def destroy
    @resume_section = ResumeSection.find(params[:id])
    @resume_section.destroy

    respond_to do |format|
      format.html { redirect_to resume_sections_url }
      format.json { head :no_content }
    end
  end
end
