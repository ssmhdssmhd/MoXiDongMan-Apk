.class Lcom/google/protobuf/GeneratedMessage$for;
.super Lcom/google/protobuf/GeneratedMessage$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/Message;)Lcom/google/protobuf/GeneratedMessage$break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/google/protobuf/Message;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Message;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$for;->if:Lcom/google/protobuf/Message;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$for;->for:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$else;-><init>(Lcom/google/protobuf/GeneratedMessage$do;)V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/protobuf/Descriptors$else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$for;->if:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$for;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    return-object v0
.end method
