import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = '#'
      return

def RemoveArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "msm_sdcc.1" in edify.script[i]:
      edify.script[i] = '#'
      return

def ReAddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "package_extract_dir" in edify.script[i] and "system" in edify.script[i]:
      edify.script[i] = 'delete_recursive("/system");package_extract_dir("system", "/system");'
      return

def FullOTA_InstallEnd(info):
    RemoveArgsForFormatSystem(info)
    ReAddArgsForFormatSystem(info)
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    RemoveArgsForFormatSystem(info)
    ReAddArgsForFormatSystem(info)
    RemoveDeviceAssert(info)