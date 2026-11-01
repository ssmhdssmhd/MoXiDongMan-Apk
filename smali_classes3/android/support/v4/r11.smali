.class public Landroid/support/v4/r11;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field public final if:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    invoke-static {p1}, Landroid/support/v4/q3;->return([S)[S

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/r11;->if:[S

    return-void
.end method


# virtual methods
.method public if()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r11;->if:[S

    invoke-static {v0}, Landroid/support/v4/q3;->return([S)[S

    move-result-object v0

    return-object v0
.end method
