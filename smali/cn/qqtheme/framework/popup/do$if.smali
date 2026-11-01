.class Lcn/qqtheme/framework/popup/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/qqtheme/framework/popup/do;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/DialogInterface$OnKeyListener;

.field public final synthetic if:Lcn/qqtheme/framework/popup/do;


# direct methods
.method public constructor <init>(Lcn/qqtheme/framework/popup/do;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/popup/do$if;->if:Lcn/qqtheme/framework/popup/do;

    iput-object p2, p0, Lcn/qqtheme/framework/popup/do$if;->do:Landroid/content/DialogInterface$OnKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do$if;->if:Lcn/qqtheme/framework/popup/do;

    invoke-virtual {v0, p1, p2, p3}, Lcn/qqtheme/framework/popup/do;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 2
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do$if;->do:Landroid/content/DialogInterface$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
