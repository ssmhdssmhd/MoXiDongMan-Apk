.class public final synthetic Landroid/support/v4/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

.field public final synthetic if:Lcom/wsw/cospa/bean/SearchComicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hh;->do:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    iput-object p2, p0, Landroid/support/v4/hh;->if:Lcom/wsw/cospa/bean/SearchComicBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/hh;->do:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    iget-object v1, p0, Landroid/support/v4/hh;->if:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->do(Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;Lcom/wsw/cospa/bean/SearchComicBean;Landroid/view/View;)V

    return-void
.end method
