#ifndef SRC_CONFIG_H_
#define SRC_CONFIG_H_

#define RDL_TENSORFLOW_BACKEND
//#define RDL_PYTORCH_BACKEND
//#define RDL_ONNXRUNTIME_BACKEND

typedef enum {
  RDL_BACKEND_TENSORFLOW = 0,
  RDL_BACKEND_PYTORCH,
  RDL_BACKEND_ONNXRUNTIME,
} RDL_Backend;

//#define RDL_COPY_RUN_INPUT
#define RDL_COPY_RUN_OUTPUT

#endif /* SRC_CONFIG_H_ */
