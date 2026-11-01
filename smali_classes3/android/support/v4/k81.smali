.class public Landroid/support/v4/k81;
.super Landroid/support/v4/throws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/k81$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/throws;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/k81$do;

    invoke-direct {v0}, Landroid/support/v4/k81$do;-><init>()V

    iput-object v0, p0, Landroid/support/v4/throws;->if:Landroid/support/v4/throws$do;

    return-void
.end method
