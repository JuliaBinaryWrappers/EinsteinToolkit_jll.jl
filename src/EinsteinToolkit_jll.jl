# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule EinsteinToolkit_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("EinsteinToolkit")
JLLWrappers.@generate_main_file("EinsteinToolkit", UUID("4bc72436-6d1e-53e9-a681-d5a2ff310728"))
end  # module EinsteinToolkit_jll
