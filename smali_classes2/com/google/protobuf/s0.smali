.class final Lcom/google/protobuf/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Lcom/google/protobuf/Internal$FloatList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/h;

    invoke-direct {v0}, Lcom/google/protobuf/h;-><init>()V

    return-object v0
.end method

.method public static case()Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/r0;->for()Lcom/google/protobuf/r0;

    move-result-object v0

    return-object v0
.end method

.method public static catch()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/m;

    invoke-direct {v0}, Lcom/google/protobuf/m;-><init>()V

    return-object v0
.end method

.method public static class()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/v;

    invoke-direct {v0}, Lcom/google/protobuf/v;-><init>()V

    return-object v0
.end method

.method public static do()Lcom/google/protobuf/Internal$BooleanList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/const;->try()Lcom/google/protobuf/const;

    move-result-object v0

    return-object v0
.end method

.method public static else(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method public static for()Lcom/google/protobuf/Internal$FloatList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/h;->try()Lcom/google/protobuf/h;

    move-result-object v0

    return-object v0
.end method

.method public static goto()Lcom/google/protobuf/Internal$BooleanList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/const;

    invoke-direct {v0}, Lcom/google/protobuf/const;-><init>()V

    return-object v0
.end method

.method public static if()Lcom/google/protobuf/Internal$DoubleList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/switch;->try()Lcom/google/protobuf/switch;

    move-result-object v0

    return-object v0
.end method

.method public static new()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/m;->try()Lcom/google/protobuf/m;

    move-result-object v0

    return-object v0
.end method

.method public static this()Lcom/google/protobuf/Internal$DoubleList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/switch;

    invoke-direct {v0}, Lcom/google/protobuf/switch;-><init>()V

    return-object v0
.end method

.method public static try()Lcom/google/protobuf/Internal$LongList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/v;->try()Lcom/google/protobuf/v;

    move-result-object v0

    return-object v0
.end method
