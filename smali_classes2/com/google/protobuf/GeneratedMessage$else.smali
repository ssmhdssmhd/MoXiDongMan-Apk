.class abstract Lcom/google/protobuf/GeneratedMessage$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "else"
.end annotation


# instance fields
.field private volatile do:Lcom/google/protobuf/Descriptors$else;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$else;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Lcom/google/protobuf/Descriptors$else;
.end method

.method public getDescriptor()Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$else;->do:Lcom/google/protobuf/Descriptors$else;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$else;->do:Lcom/google/protobuf/Descriptors$else;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$else;->do()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$else;->do:Lcom/google/protobuf/Descriptors$else;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$else;->do:Lcom/google/protobuf/Descriptors$else;

    return-object v0
.end method
