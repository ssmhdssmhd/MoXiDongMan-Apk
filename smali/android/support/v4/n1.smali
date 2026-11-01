.class public final synthetic Landroid/support/v4/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:[Ljava/lang/String;

.field public final synthetic for:[Ljava/lang/String;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n1;->do:[Ljava/lang/String;

    iput p2, p0, Landroid/support/v4/n1;->if:I

    iput-object p3, p0, Landroid/support/v4/n1;->for:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/n1;->do:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/n1;->if:I

    iget-object v2, p0, Landroid/support/v4/n1;->for:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->do([Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method
