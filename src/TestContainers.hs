-- |
-- This module shall be used as entrypoint to the testcontainers library. It exports
-- all the necessary types and functions for most common use-cases.
--
module TestContainers
  (

    -- * Docker images

    M.ImageTag

  , M.Image
  , M.imageTag

    -- * Referring to Docker images

  , M.ToImage
  , M.fromTag
  , M.fromBuildContext
  , M.build

  -- * @docker run@ parameters

  , M.ContainerRequest
  , M.containerRequest

  , M.setName
  , M.setFixedName
  , M.setSuffixedName
  , M.setRandomName
  , M.setCmd
  , M.setVolumeMounts
  , M.setRm
  , M.setEnv
  , M.setNetwork
  , M.setLink
  , M.setExpose
  , M.setWaitingFor

    -- * Running Docker containers (@docker run@)

  , M.Container
  , M.containerAlias
  , M.containerGateway
  , M.containerIp
  , M.containerPort
  , M.containerAddress
  , M.containerReleaseKey
  , M.containerImage

  , M.run

    -- * Inspecting Docker containers

  , M.InspectOutput
  , M.inspect

    -- * Docker container lifecycle

  , M.stop
  , M.kill
  , M.rm
  , M.withLogs

    -- * Readiness checks

  , M.WaitUntilReady

    -- ** Timeout for readiness checks

  , M.waitUntilTimeout

    -- ** Waiting on particular log lines

  , M.Pipe(..)
  , M.waitWithLogs
  , M.waitForLogLine

    -- ** Wait until connection can be established

  , M.waitUntilMappedPortReachable

    -- ** Wait until the http server responds with a specific status code
  , M.waitForHttp

    -- * Monad

  , M.MonadDocker

    -- * Configuration

  , Config(..)
  , defaultDockerConfig
  , determineConfig

    -- *

  , Tracer
  , Trace(..)
  , newTracer

    -- * Exceptions

  , M.DockerException(..)
  , M.TimeoutException(..)
  , M.UnexpectedEndOfPipe(..)

    -- * Misc. Docker functions

  , dockerHostOs
  , isDockerOnLinux

    -- * Predefined Docker images

  , M.redis
  , M.mongo

    -- * Reexports

  , ResIO
  , runResourceT
  , (&)
  ) where

import           TestContainers.Docker as M
import           TestContainers.Image  as M
