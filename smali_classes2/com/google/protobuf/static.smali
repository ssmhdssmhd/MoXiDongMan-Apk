.class public final Lcom/google/protobuf/static;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final do(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)",
            "Lcom/google/protobuf/Parser<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/static$do;

    invoke-direct {v0, p0}, Lcom/google/protobuf/static$do;-><init>(Lcom/google/protobuf/Parser;)V

    return-object v0
.end method
