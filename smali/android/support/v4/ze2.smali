.class public final synthetic Landroid/support/v4/ze2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroidx/constraintlayout/motion/widget/ViewTransition;

.field public final synthetic if:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ze2;->do:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iput-object p2, p0, Landroid/support/v4/ze2;->if:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ze2;->do:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget-object v1, p0, Landroid/support/v4/ze2;->if:[Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->do(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    return-void
.end method
