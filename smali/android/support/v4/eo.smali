.class public final synthetic Landroid/support/v4/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/eo;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final onConfirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eo;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/utils/while;->if(Lcom/wsw/cospa/bean/ComicSourceBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
