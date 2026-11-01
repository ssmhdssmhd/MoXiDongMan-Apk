.class final Lcom/google/protobuf/ByteString$case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/native;

.field private final if:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/ByteString$case;->if:[B

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/native;->H([B)Lcom/google/protobuf/native;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/ByteString$case;->do:Lcom/google/protobuf/native;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/protobuf/ByteString$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$case;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$case;->do:Lcom/google/protobuf/native;

    invoke-virtual {v0}, Lcom/google/protobuf/native;->else()V

    .line 2
    new-instance v0, Lcom/google/protobuf/ByteString$goto;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$case;->if:[B

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString$goto;-><init>([B)V

    return-object v0
.end method

.method public if()Lcom/google/protobuf/native;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$case;->do:Lcom/google/protobuf/native;

    return-object v0
.end method
