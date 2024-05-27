project "reactphysics3d"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "On"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

	files
	{
		"src/body/CollisionBody.cpp",
		"src/body/RigidBody.cpp",
		"src/collision/broadphase/DynamicAABBTree.cpp",
		"src/collision/narrowphase/CollisionDispatch.cpp",
		"src/collision/narrowphase/GJK/VoronoiSimplex.cpp",
		"src/collision/narrowphase/GJK/GJKAlgorithm.cpp",
		"src/collision/narrowphase/SAT/SATAlgorithm.cpp",
		"src/collision/narrowphase/SphereVsSphereAlgorithm.cpp",
		"src/collision/narrowphase/CapsuleVsCapsuleAlgorithm.cpp",
		"src/collision/narrowphase/SphereVsCapsuleAlgorithm.cpp",
		"src/collision/narrowphase/SphereVsConvexPolyhedronAlgorithm.cpp",
		"src/collision/narrowphase/CapsuleVsConvexPolyhedronAlgorithm.cpp",
		"src/collision/narrowphase/ConvexPolyhedronVsConvexPolyhedronAlgorithm.cpp",
		"src/collision/narrowphase/NarrowPhaseInput.cpp",
		"src/collision/narrowphase/NarrowPhaseInfoBatch.cpp",
		"src/collision/shapes/AABB.cpp",
		"src/collision/shapes/ConvexShape.cpp",
		"src/collision/shapes/ConvexPolyhedronShape.cpp",
		"src/collision/shapes/ConcaveShape.cpp",
		"src/collision/shapes/BoxShape.cpp",
		"src/collision/shapes/CapsuleShape.cpp",
		"src/collision/shapes/CollisionShape.cpp",
		"src/collision/shapes/ConvexMeshShape.cpp",
		"src/collision/shapes/SphereShape.cpp",
		"src/collision/shapes/TriangleShape.cpp",
		"src/collision/shapes/ConcaveMeshShape.cpp",
		"src/collision/shapes/HeightFieldShape.cpp",
		"src/collision/RaycastInfo.cpp",
		"src/collision/Collider.cpp",
		"src/collision/TriangleVertexArray.cpp",
		"src/collision/PolygonVertexArray.cpp",
		"src/collision/TriangleMesh.cpp",
		"src/collision/PolyhedronMesh.cpp",
		"src/collision/HalfEdgeStructure.cpp",
		"src/collision/ContactManifold.cpp",
		"src/constraint/BallAndSocketJoint.cpp",
		"src/constraint/ContactPoint.cpp",
		"src/constraint/FixedJoint.cpp",
		"src/constraint/HingeJoint.cpp",
		"src/constraint/Joint.cpp",
		"src/constraint/SliderJoint.cpp",
		"src/engine/PhysicsCommon.cpp",
		"src/systems/ConstraintSolverSystem.cpp",
		"src/systems/ContactSolverSystem.cpp",
		"src/systems/DynamicsSystem.cpp",
		"src/systems/CollisionDetectionSystem.cpp",
		"src/systems/SolveBallAndSocketJointSystem.cpp",
		"src/systems/SolveFixedJointSystem.cpp",
		"src/systems/SolveHingeJointSystem.cpp",
		"src/systems/SolveSliderJointSystem.cpp",
		"src/engine/PhysicsWorld.cpp",
		"src/engine/Island.cpp",
		"src/engine/Material.cpp",
		"src/engine/OverlappingPairs.cpp",
		"src/engine/Entity.cpp",
		"src/engine/EntityManager.cpp",
		"src/systems/BroadPhaseSystem.cpp",
		"src/components/Components.cpp",
		"src/components/CollisionBodyComponents.cpp",
		"src/components/RigidBodyComponents.cpp",
		"src/components/TransformComponents.cpp",
		"src/components/ColliderComponents.cpp",
		"src/components/JointComponents.cpp",
		"src/components/BallAndSocketJointComponents.cpp",
		"src/components/FixedJointComponents.cpp",
		"src/components/HingeJointComponents.cpp",
		"src/components/SliderJointComponents.cpp",
		"src/collision/CollisionCallback.cpp",
		"src/collision/OverlapCallback.cpp",
		"src/mathematics/Matrix2x2.cpp",
		"src/mathematics/Matrix3x3.cpp",
		"src/mathematics/Quaternion.cpp",
		"src/mathematics/Transform.cpp",
		"src/mathematics/Vector2.cpp",
		"src/mathematics/Vector3.cpp",
		"src/memory/PoolAllocator.cpp",
		"src/memory/SingleFrameAllocator.cpp",
		"src/memory/HeapAllocator.cpp",
		"src/memory/MemoryManager.cpp",
		"src/utils/Profiler.cpp",
		"src/utils/DefaultLogger.cpp",
		"src/utils/DebugRenderer.cpp"
	}
	removefiles { "source/foundation/unix/**.cpp" }
	
	includedirs{
		"include",
		"include/reactphysics3d/configuration.h",
		"include/reactphysics3d/decimal.h",
		"include/reactphysics3d/reactphysics3d.h",
		"include/reactphysics3d/body/CollisionBody.h",
		"include/reactphysics3d/body/RigidBody.h",
		"include/reactphysics3d/collision/ContactPointInfo.h",
		"include/reactphysics3d/collision/ContactManifoldInfo.h",
		"include/reactphysics3d/collision/ContactPair.h",
		"include/reactphysics3d/collision/broadphase/DynamicAABBTree.h",
		"include/reactphysics3d/collision/narrowphase/CollisionDispatch.h",
		"include/reactphysics3d/collision/narrowphase/GJK/VoronoiSimplex.h",
		"include/reactphysics3d/collision/narrowphase/GJK/GJKAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/SAT/SATAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/NarrowPhaseAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/SphereVsSphereAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/CapsuleVsCapsuleAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/SphereVsCapsuleAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/SphereVsConvexPolyhedronAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/CapsuleVsConvexPolyhedronAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/ConvexPolyhedronVsConvexPolyhedronAlgorithm.h",
		"include/reactphysics3d/collision/narrowphase/NarrowPhaseInput.h",
		"include/reactphysics3d/collision/narrowphase/NarrowPhaseInfoBatch.h",
		"include/reactphysics3d/collision/shapes/AABB.h",
		"include/reactphysics3d/collision/shapes/ConvexShape.h",
		"include/reactphysics3d/collision/shapes/ConvexPolyhedronShape.h",
		"include/reactphysics3d/collision/shapes/ConcaveShape.h",
		"include/reactphysics3d/collision/shapes/BoxShape.h",
		"include/reactphysics3d/collision/shapes/CapsuleShape.h",
		"include/reactphysics3d/collision/shapes/CollisionShape.h",
		"include/reactphysics3d/collision/shapes/ConvexMeshShape.h",
		"include/reactphysics3d/collision/shapes/SphereShape.h",
		"include/reactphysics3d/collision/shapes/TriangleShape.h",
		"include/reactphysics3d/collision/shapes/ConcaveMeshShape.h",
		"include/reactphysics3d/collision/shapes/HeightFieldShape.h",
		"include/reactphysics3d/collision/RaycastInfo.h",
		"include/reactphysics3d/collision/Collider.h",
		"include/reactphysics3d/collision/TriangleVertexArray.h",
		"include/reactphysics3d/collision/PolygonVertexArray.h",
		"include/reactphysics3d/collision/TriangleMesh.h",
		"include/reactphysics3d/collision/PolyhedronMesh.h",
		"include/reactphysics3d/collision/HalfEdgeStructure.h",
		"include/reactphysics3d/collision/ContactManifold.h",
		"include/reactphysics3d/constraint/BallAndSocketJoint.h",
		"include/reactphysics3d/constraint/ContactPoint.h",
		"include/reactphysics3d/constraint/FixedJoint.h",
		"include/reactphysics3d/constraint/HingeJoint.h",
		"include/reactphysics3d/constraint/Joint.h",
		"include/reactphysics3d/constraint/SliderJoint.h",
		"include/reactphysics3d/engine/Entity.h",
		"include/reactphysics3d/engine/EntityManager.h",
		"include/reactphysics3d/engine/PhysicsCommon.h",
		"include/reactphysics3d/systems/ConstraintSolverSystem.h",
		"include/reactphysics3d/systems/ContactSolverSystem.h",
		"include/reactphysics3d/systems/DynamicsSystem.h",
		"include/reactphysics3d/systems/CollisionDetectionSystem.h",
		"include/reactphysics3d/systems/SolveBallAndSocketJointSystem.h",
		"include/reactphysics3d/systems/SolveFixedJointSystem.h",
		"include/reactphysics3d/systems/SolveHingeJointSystem.h",
		"include/reactphysics3d/systems/SolveSliderJointSystem.h",
		"include/reactphysics3d/engine/PhysicsWorld.h",
		"include/reactphysics3d/engine/EventListener.h",
		"include/reactphysics3d/engine/Island.h",
		"include/reactphysics3d/engine/Islands.h",
		"include/reactphysics3d/engine/Material.h",
		"include/reactphysics3d/engine/OverlappingPairs.h",
		"include/reactphysics3d/systems/BroadPhaseSystem.h",
		"include/reactphysics3d/components/Components.h",
		"include/reactphysics3d/components/CollisionBodyComponents.h",
		"include/reactphysics3d/components/RigidBodyComponents.h",
		"include/reactphysics3d/components/TransformComponents.h",
		"include/reactphysics3d/components/ColliderComponents.h",
		"include/reactphysics3d/components/JointComponents.h",
		"include/reactphysics3d/components/BallAndSocketJointComponents.h",
		"include/reactphysics3d/components/FixedJointComponents.h",
		"include/reactphysics3d/components/HingeJointComponents.h",
		"include/reactphysics3d/components/SliderJointComponents.h",
		"include/reactphysics3d/collision/CollisionCallback.h",
		"include/reactphysics3d/collision/OverlapCallback.h",
		"include/reactphysics3d/mathematics/mathematics.h",
		"include/reactphysics3d/mathematics/mathematics_common.h",
		"include/reactphysics3d/mathematics/mathematics_functions.h",
		"include/reactphysics3d/mathematics/Matrix2x2.h",
		"include/reactphysics3d/mathematics/Matrix3x3.h",
		"include/reactphysics3d/mathematics/Quaternion.h",
		"include/reactphysics3d/mathematics/Transform.h",
		"include/reactphysics3d/mathematics/Vector2.h",
		"include/reactphysics3d/mathematics/Vector3.h",
		"include/reactphysics3d/mathematics/Ray.h",
		"include/reactphysics3d/memory/MemoryAllocator.h",
		"include/reactphysics3d/memory/PoolAllocator.h",
		"include/reactphysics3d/memory/SingleFrameAllocator.h",
		"include/reactphysics3d/memory/HeapAllocator.h",
		"include/reactphysics3d/memory/DefaultAllocator.h",
		"include/reactphysics3d/memory/MemoryManager.h",
		"include/reactphysics3d/containers/Stack.h",
		"include/reactphysics3d/containers/LinkedList.h",
		"include/reactphysics3d/containers/Array.h",
		"include/reactphysics3d/containers/Map.h",
		"include/reactphysics3d/containers/Set.h",
		"include/reactphysics3d/containers/Pair.h",
		"include/reactphysics3d/containers/Deque.h",
		"include/reactphysics3d/utils/Profiler.h",
		"include/reactphysics3d/utils/Logger.h",
		"include/reactphysics3d/utils/DefaultLogger.h",
		"include/reactphysics3d/utils/DebugRenderer.h"
	}
	
	defines{
		
	}


	filter "system:windows"
		systemversion "latest"
		
        defines{
                
        }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		
	filter "configurations:Tools_Debug"
		defines {
		"VCE_DEBUG",
		"VCE_TOOLS"
		}
		symbols "on"
	

	filter "configurations:Tools_Release"
		defines {
		"VCE_RELEASE",
		"VCE_TOOLS"
		}
		optimize "on"