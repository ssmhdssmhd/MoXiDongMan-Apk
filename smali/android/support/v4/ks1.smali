.class public final synthetic Landroid/support/v4/ks1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ks1;->do:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ks1;->do:Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;->do(Lcom/wsw/cospa/widget/view/ScrimInsetsRelativeLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
