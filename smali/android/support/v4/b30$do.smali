.class public Landroid/support/v4/b30$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static final for:I = 0x12c


# instance fields
.field private final do:I

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/b30$do;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/support/v4/b30$do;->do:I

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/b30;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/b30;

    iget v1, p0, Landroid/support/v4/b30$do;->do:I

    iget-boolean v2, p0, Landroid/support/v4/b30$do;->if:Z

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b30;-><init>(IZ)V

    return-object v0
.end method

.method public if(Z)Landroid/support/v4/b30$do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/b30$do;->if:Z

    return-object p0
.end method
