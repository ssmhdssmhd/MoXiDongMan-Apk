.class public final synthetic Landroid/support/v4/d20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DonateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/DonateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d20;->do:Lcom/wsw/cospa/activity/DonateActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d20;->do:Lcom/wsw/cospa/activity/DonateActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/DonateActivity;->import(Lcom/wsw/cospa/activity/DonateActivity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
