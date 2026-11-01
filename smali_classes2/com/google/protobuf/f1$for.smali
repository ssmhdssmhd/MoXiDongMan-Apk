.class final Lcom/google/protobuf/f1$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# static fields
.field public static final do:Lcom/google/protobuf/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/b2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->for:Lcom/google/protobuf/Descriptors$if;

    sget-object v1, Lcom/google/protobuf/c2$if;->STRING:Lcom/google/protobuf/c2$if;

    sget-object v2, Lcom/google/protobuf/c2$if;->MESSAGE:Lcom/google/protobuf/c2$if;

    .line 2
    invoke-static {}, Lcom/google/protobuf/b2;->getDefaultInstance()Lcom/google/protobuf/b2;

    move-result-object v3

    const-string v4, ""

    .line 3
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/protobuf/x;->catch(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/f1$for;->do:Lcom/google/protobuf/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
