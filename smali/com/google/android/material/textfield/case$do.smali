.class Lcom/google/android/material/textfield/case$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/case;->g(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:I

.field public final synthetic if:Landroid/widget/TextView;

.field public final synthetic new:Landroid/widget/TextView;

.field public final synthetic try:Lcom/google/android/material/textfield/case;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/case;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/case$do;->try:Lcom/google/android/material/textfield/case;

    iput p2, p0, Lcom/google/android/material/textfield/case$do;->do:I

    iput-object p3, p0, Lcom/google/android/material/textfield/case$do;->if:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/case$do;->for:I

    iput-object p5, p0, Lcom/google/android/material/textfield/case$do;->new:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->try:Lcom/google/android/material/textfield/case;

    iget v0, p0, Lcom/google/android/material/textfield/case$do;->do:I

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/case;->do(Lcom/google/android/material/textfield/case;I)I

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->try:Lcom/google/android/material/textfield/case;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/case;->if(Lcom/google/android/material/textfield/case;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->if:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget p1, p0, Lcom/google/android/material/textfield/case$do;->for:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->try:Lcom/google/android/material/textfield/case;

    invoke-static {p1}, Lcom/google/android/material/textfield/case;->for(Lcom/google/android/material/textfield/case;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->try:Lcom/google/android/material/textfield/case;

    invoke-static {p1}, Lcom/google/android/material/textfield/case;->for(Lcom/google/android/material/textfield/case;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->new:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->new:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/case$do;->new:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
