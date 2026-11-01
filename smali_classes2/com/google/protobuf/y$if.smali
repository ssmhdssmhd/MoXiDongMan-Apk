.class Lcom/google/protobuf/y$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Lcom/google/protobuf/c2$if;

.field public final for:Lcom/google/protobuf/c2$if;

.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final new:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/c2$if;",
            "TK;",
            "Lcom/google/protobuf/c2$if;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/y$if;->do:Lcom/google/protobuf/c2$if;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    .line 5
    iput-object p4, p0, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    return-void
.end method
