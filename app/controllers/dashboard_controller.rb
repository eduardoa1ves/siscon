class DashboardController < ActionController::Base
	def index
		puts "Application Index"
	end

  def local
    puts "locals"

    @locals = SisconLocal.all
  end

  def create_local
    puts params.inspect

    SisconLocal.create({
      name: params["local_name"]
    })

    flash[:notice] = "Local cadastrado com sucesso."

    redirect_to local_path
  end

  def produto
    @produtos = SisconProduct.all
    @local_ids = SisconLocal.all.map{ |local| [local.name, local.id] }
  end

  def create_produto
    SisconProduct.create({
      name: params["local_name"],
      siscon_local_id: params["local"]
    })

    flash[:notice] = "Produto cadastrado com sucesso."

    redirect_to produto_path
  end

  def praga
    @pragas = SisconPraga.all
    @local_ids = SisconLocal.all.map{ |local| [local.name, local.id] }
  end

  def create_praga
    SisconPraga.create({
      name: params["local_name"],
      siscon_local_id: params["local"]
    })

    flash[:notice] = "Praga cadastrado com sucesso."

    redirect_to praga_path
  end

  def incidente
    @incidentes = SisconIncidente.all
    @local_ids = SisconLocal.all.map{ |local| [local.name, local.id] }
    @produtos = SisconProduct.all.map{ |local| [local.name, local.id] }
  end

  def create_incidente
    SisconIncidente.create({
      name: params["local_name"],
      siscon_local_id: params["local"],
      siscon_product_id: params["product"]
    })

    flash[:notice] = "Incidente cadastrado com sucesso."

    redirect_to incidente_path
  end

end
