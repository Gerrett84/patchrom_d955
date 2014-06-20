import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "msm_sdcc.1" in edify.script[i]:
      edify.script[i] = ''
      return

def FullOTA_InstallEnd(info):
    AddArgsForFormatSystem(info)
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    AddArgsForFormatSystem(info)
    RemoveDeviceAssert(info)