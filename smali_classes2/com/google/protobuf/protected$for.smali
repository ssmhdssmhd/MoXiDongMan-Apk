.class public final Lcom/google/protobuf/protected$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field public final do:Lcom/google/protobuf/Descriptors$else;

.field public final if:Lcom/google/protobuf/Message;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$else;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;Lcom/google/protobuf/protected$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/protected$for;-><init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)V

    return-void
.end method
