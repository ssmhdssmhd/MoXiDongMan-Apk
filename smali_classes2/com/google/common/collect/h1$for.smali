.class final Lcom/google/common/collect/h1$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# static fields
.field public static final do:Lcom/google/common/collect/b3$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b3$if<",
            "Lcom/google/common/collect/h1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/h1;

    const-string v1, "emptySet"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/b3;->do(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/b3$if;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/h1$for;->do:Lcom/google/common/collect/b3$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
