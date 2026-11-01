.class Lcom/google/common/collect/p0$if;
.super Lcom/google/common/collect/x0$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/p0<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$try;-><init>(Lcom/google/common/collect/x0;)V

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/p0$do;

    invoke-direct {v0}, Lcom/google/common/collect/p0$do;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/x0$try;->createMap(Lcom/google/common/collect/x0$if;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
