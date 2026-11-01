.class public final synthetic Landroid/support/v4/i81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

.field public final synthetic if:Lcom/wsw/cospa/widget/ChangeSourceDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/wsw/cospa/widget/ChangeSourceDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/i81;->do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iput-object p2, p0, Landroid/support/v4/i81;->if:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    return-void
.end method


# virtual methods
.method public final onChooseOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/i81;->do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object v1, p0, Landroid/support/v4/i81;->if:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->if(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method
