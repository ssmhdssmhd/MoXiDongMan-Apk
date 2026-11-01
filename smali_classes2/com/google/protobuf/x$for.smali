.class final Lcom/google/protobuf/x$for;
.super Lcom/google/protobuf/y$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/y$if<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final case:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/x;Lcom/google/protobuf/c2$if;Lcom/google/protobuf/c2$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;",
            "Lcom/google/protobuf/c2$if;",
            "Lcom/google/protobuf/c2$if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/x;->do(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/protobuf/x;->if(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/protobuf/y$if;-><init>(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    .line 3
    new-instance p1, Lcom/google/protobuf/x$for$do;

    invoke-direct {p1, p0}, Lcom/google/protobuf/x$for$do;-><init>(Lcom/google/protobuf/x$for;)V

    iput-object p1, p0, Lcom/google/protobuf/x$for;->case:Lcom/google/protobuf/Parser;

    return-void
.end method
