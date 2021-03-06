/***************************************************************************
# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#  * Neither the name of NVIDIA CORPORATION nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
# OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
***************************************************************************/

/** Translation of defines set by the host to compile-time constants used to
    configure the path tracer without overhead from dynamic control flow.
    This will eventually be replaced by specialization constants in Slang.

    The host sets the following defines (booleans are 1=true, 0=false):

    SAMPLES_PER_PIXEL           Number of paths to trace per pixel.
    LIGHT_SAMPLES_PER_VERTEX    Number of light sampler per path vertex.
    MAX_BOUNCES                 Maximum number of indirect bounces (0 means no indirect).
    USE_DEPTH_OF_FIELD          Enables depth-of-field.
    USE_ANALYTIC_LIGHTS         Enables Falcor's analytic lights (point, directional).
    USE_EMISSIVE_LIGHTS         Enables use of emissive geometry as light sources.
    USE_EMISSIVE_SAMPLER        True if the emissive light sampler should be used.
    USE_ENV_LIGHT               True if env map is available and should be used as light source.
    USE_ENV_BACKGROUND          True if env map is available and should be used as background.
    USE_BRDF_SAMPLING           Enables BRDF importance sampling.
    USE_MIS                     Enables multiple importance sampling.
    USE_RUSSIAN_ROULETTE        Enables Russian roulette for path termination.
    MIS_HEURISTIC               MIS heuristic enum value.
*/

static const uint kSamplesPerPixel = SAMPLES_PER_PIXEL;
static const uint kLightSamplesPerVertex = LIGHT_SAMPLES_PER_VERTEX;
static const uint kMaxBounces = MAX_BOUNCES;
static const bool kForceAlphaOne = FORCE_ALPHA_ONE;
static const bool kUseAnalyticLights = USE_ANALYTIC_LIGHTS;
static const bool kUseEmissiveLights = USE_EMISSIVE_LIGHTS;
static const bool kUseEmissiveSampler = USE_EMISSIVE_SAMPLER;
static const bool kUseEnvLight = USE_ENV_LIGHT;
static const bool kUseEnvBackground = USE_ENV_BACKGROUND;
static const bool kUseBRDFSampling = USE_BRDF_SAMPLING;
static const bool kUseMIS = USE_MIS;
static const bool kUseRussianRoulette = USE_RUSSIAN_ROULETTE;
static const uint kMISHeuristic = MIS_HEURISTIC;
//static const MISHeuristic kMISHeuristic = (MISHeuristic) MIS_HEURISTIC;
