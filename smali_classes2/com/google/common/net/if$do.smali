.class public final Lcom/google/common/net/if$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/net/Inet4Address;

.field private final for:I

.field private final if:Ljava/net/Inet4Address;

.field private final new:I


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .locals 5
    .param p1    # Ljava/net/Inet4Address;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/net/Inet4Address;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const v1, 0xffff

    const/4 v2, 0x0

    if-ltz p3, :cond_0

    if-gt p3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "port \'%s\' is out of range (0 <= port <= 0xffff)"

    .line 2
    invoke-static {v3, v4, p3}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    if-ltz p4, :cond_1

    if-gt p4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "flags \'%s\' is out of range (0 <= flags <= 0xffff)"

    .line 3
    invoke-static {v0, v1, p4}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/google/common/net/if;->do()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    iput-object p1, p0, Lcom/google/common/net/if$do;->do:Ljava/net/Inet4Address;

    .line 5
    invoke-static {}, Lcom/google/common/net/if;->do()Ljava/net/Inet4Address;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    iput-object p1, p0, Lcom/google/common/net/if$do;->if:Ljava/net/Inet4Address;

    .line 6
    iput p3, p0, Lcom/google/common/net/if$do;->for:I

    .line 7
    iput p4, p0, Lcom/google/common/net/if$do;->new:I

    return-void
.end method


# virtual methods
.method public do()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/if$do;->if:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/if$do;->for:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/if$do;->new:I

    return v0
.end method

.method public new()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/if$do;->do:Ljava/net/Inet4Address;

    return-object v0
.end method
