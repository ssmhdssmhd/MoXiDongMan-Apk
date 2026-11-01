.class public abstract Landroid/support/v4/throws$do;
.super Landroid/support/v4/i3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/throws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/i3<",
        "Landroid/support/v4/switch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/interface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-",
            "Landroid/support/v4/switch;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/throws$do;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/interface;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/interface<",
            "-",
            "Landroid/support/v4/switch;",
            ">;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/i3;-><init>(Landroid/support/v4/interface;II)V

    return-void
.end method


# virtual methods
.method public final class(Ljava/lang/Object;)Landroid/support/v4/switch;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/switch;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/switch;

    return-object p1
.end method

.method public final const(I)[Landroid/support/v4/switch;
    .locals 0

    .line 1
    new-array p1, p1, [Landroid/support/v4/switch;

    return-object p1
.end method

.method public bridge synthetic do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/throws$do;->class(Ljava/lang/Object;)Landroid/support/v4/switch;

    move-result-object p1

    return-object p1
.end method

.method public final final(I)[[Landroid/support/v4/switch;
    .locals 0

    .line 1
    new-array p1, p1, [[Landroid/support/v4/switch;

    return-object p1
.end method

.method public bridge synthetic for(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/throws$do;->const(I)[Landroid/support/v4/switch;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(I)[[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/throws$do;->final(I)[[Landroid/support/v4/switch;

    move-result-object p1

    return-object p1
.end method
