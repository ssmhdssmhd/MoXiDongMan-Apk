.class public Lcom/google/protobuf/j1$goto;
.super Lcom/google/protobuf/j1$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation


# instance fields
.field private final unknownField:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/google/protobuf/j1$for;-><init>(IILjava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/google/protobuf/j1$goto;->unknownField:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, ""

    .line 1
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/protobuf/j1$goto;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUnknownField()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/j1$goto;->unknownField:Ljava/lang/String;

    return-object v0
.end method
