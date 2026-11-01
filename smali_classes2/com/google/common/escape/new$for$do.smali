.class Lcom/google/common/escape/new$for$do;
.super Landroid/support/v4/j3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/new$for;->for()Lcom/google/common/escape/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final else:[C

.field public final synthetic goto:Lcom/google/common/escape/new$for;


# direct methods
.method public constructor <init>(Lcom/google/common/escape/new$for;Ljava/util/Map;CC)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/escape/new$for$do;->goto:Lcom/google/common/escape/new$for;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/j3;-><init>(Ljava/util/Map;CC)V

    .line 2
    invoke-static {p1}, Lcom/google/common/escape/new$for;->do(Lcom/google/common/escape/new$for;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/common/escape/new$for;->do(Lcom/google/common/escape/new$for;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/common/escape/new$for$do;->else:[C

    return-void
.end method


# virtual methods
.method public case(C)[C
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/common/escape/new$for$do;->else:[C

    return-object p1
.end method
