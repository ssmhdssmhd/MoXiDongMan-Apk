.class public Landroid/support/v4/uh0$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/uh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:Landroid/support/v4/qe0;

.field private if:[I


# direct methods
.method public constructor <init>(Landroid/support/v4/qe0;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/uh0$if;->do:Landroid/support/v4/qe0;

    iput-object p2, p0, Landroid/support/v4/uh0$if;->if:[I

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uh0$if;->do:Landroid/support/v4/qe0;

    return-object v0
.end method

.method public if()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uh0$if;->if:[I

    return-object v0
.end method
