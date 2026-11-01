.class public final synthetic Landroid/support/v4/f62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/TextInputSpinner;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/TextInputSpinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f62;->do:Lcom/wsw/cospa/widget/TextInputSpinner;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/f62;->do:Lcom/wsw/cospa/widget/TextInputSpinner;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/widget/TextInputSpinner;->if(Lcom/wsw/cospa/widget/TextInputSpinner;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
