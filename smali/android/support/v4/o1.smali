.class public final synthetic Landroid/support/v4/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:[Ljava/lang/String;

.field public final synthetic for:[Ljava/lang/String;

.field public final synthetic if:I

.field public final synthetic new:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/o1;->do:[Ljava/lang/String;

    iput p2, p0, Landroid/support/v4/o1;->if:I

    iput-object p3, p0, Landroid/support/v4/o1;->for:[Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/o1;->new:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/o1;->do:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/o1;->if:I

    iget-object v2, p0, Landroid/support/v4/o1;->for:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/o1;->new:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->if([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
