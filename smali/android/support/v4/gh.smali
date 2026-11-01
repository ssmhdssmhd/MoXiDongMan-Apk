.class public final synthetic Landroid/support/v4/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/ChangeSourceDialog;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/bean/SearchComicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gh;->do:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iput-object p2, p0, Landroid/support/v4/gh;->if:Lcom/wsw/cospa/bean/SearchComicBean;

    iput-object p3, p0, Landroid/support/v4/gh;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/gh;->do:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iget-object v1, p0, Landroid/support/v4/gh;->if:Lcom/wsw/cospa/bean/SearchComicBean;

    iget-object v2, p0, Landroid/support/v4/gh;->for:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->do(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
