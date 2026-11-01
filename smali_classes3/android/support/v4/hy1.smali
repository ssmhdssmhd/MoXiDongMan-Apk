.class public abstract Landroid/support/v4/hy1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:C = '-'

.field public static final if:C = '+'

.field public static final new:C = '='


# instance fields
.field public final do:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v4/hy1;->do:I

    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public case()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public catch()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public class()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public const()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public do()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public else(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final(C)Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public for()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public goto(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public if(C)V
    .locals 0

    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public super()V
    .locals 0

    return-void
.end method

.method public this()Landroid/support/v4/hy1;
    .locals 0

    return-object p0
.end method

.method public throw(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public try()V
    .locals 0

    return-void
.end method
