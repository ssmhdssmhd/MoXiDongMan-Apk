.class Lcn/qqtheme/framework/popup/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/qqtheme/framework/popup/do;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/DialogInterface$OnDismissListener;

.field public final synthetic if:Lcn/qqtheme/framework/popup/do;


# direct methods
.method public constructor <init>(Lcn/qqtheme/framework/popup/do;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/popup/do$do;->if:Lcn/qqtheme/framework/popup/do;

    iput-object p2, p0, Lcn/qqtheme/framework/popup/do$do;->do:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do$do;->if:Lcn/qqtheme/framework/popup/do;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/popup/do;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do$do;->do:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
