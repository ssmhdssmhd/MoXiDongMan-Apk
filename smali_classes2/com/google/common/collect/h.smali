.class Lcom/google/common/collect/h;
.super Lcom/google/common/collect/w0;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/collect/h;

.field private static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/h;

    invoke-direct {v0}, Lcom/google/common/collect/h;-><init>()V

    sput-object v0, Lcom/google/common/collect/h;->INSTANCE:Lcom/google/common/collect/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/collect/x0;->of()Lcom/google/common/collect/x0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/w0;-><init>(Lcom/google/common/collect/x0;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/h;->INSTANCE:Lcom/google/common/collect/h;

    return-object v0
.end method
