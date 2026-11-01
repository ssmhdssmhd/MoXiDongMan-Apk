.class final Lcom/google/protobuf/Descriptors$for$if;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$for$if;->for:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$for$if;->if:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$for$if;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$if;->for:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$if;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$if;->if:Ljava/lang/String;

    return-object v0
.end method

.method public new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$for$if;->for:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->continue()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v0

    return-object v0
.end method
