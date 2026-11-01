.class public final synthetic Landroid/support/v4/xs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/SearchComicAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/SearchComicAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xs1;->do:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    iput p2, p0, Landroid/support/v4/xs1;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/xs1;->do:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    iget v1, p0, Landroid/support/v4/xs1;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/SearchComicAdapter;->if(Lcom/wsw/cospa/adapter/SearchComicAdapter;ILandroid/view/View;)V

    return-void
.end method
