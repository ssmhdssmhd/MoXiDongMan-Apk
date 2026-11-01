.class public final synthetic Landroid/support/v4/h00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/h00;->do:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h00;->do:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/wsw/cospa/utils/DialogTool;->this(Landroid/app/AlertDialog;)V

    return-void
.end method
